using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;

namespace EnfantMod.Attributes
{
    public class UniqueAttribute : ValidationAttribute
    {
        private readonly string _propertyName;

        public UniqueAttribute(string propertyName)
        {
            _propertyName = propertyName;
        }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value == null)
            {
                return new ValidationResult("La valeur ne peut pas être nulle.");
            }

            var context = new EnfantMod.Data.EnfantDAO();
            var propertyInfo = validationContext.ObjectType.GetProperty(_propertyName);

            if (propertyInfo == null)
            {
                return new ValidationResult($"Propriété inconnue : {_propertyName}");
            }

            // Obtenir l'ID de l'objet en cours de validation
            var idProperty = validationContext.ObjectType.GetProperty("Id");
            if (idProperty == null)
            {
                return new ValidationResult("Propriété 'Id' non trouvée.");
            }

            var id = (int)idProperty.GetValue(validationContext.ObjectInstance);

            // Obtenir l'entité actuelle depuis la base de données
            var currentEntity = context.FetchOne(id);
            if (currentEntity == null)
            {
                return new ValidationResult("L'entité n'a pas été trouvée.");
            }

            // Comparer la valeur actuelle de CIN avec celle en base de données
            var currentValueInDb = propertyInfo.GetValue(currentEntity, null)?.ToString();
            if (currentValueInDb == value.ToString())
            {
                // Si la valeur n'a pas changé, ne pas effectuer la vérification d'unicité
                return ValidationResult.Success;
            }

            // Vérifiez si la valeur est unique dans la base de données sauf pour l'élément en cours de modification
            if (!context.CheckUnique(_propertyName, value.ToString(), id))
            {
                return new ValidationResult($"{_propertyName} doit être unique.");
            }

            return ValidationResult.Success;
        }
    }
}
