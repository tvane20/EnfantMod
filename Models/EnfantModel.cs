using EnfantMod.Attributes;
using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace EnfantMod.Models
{
    public class EnfantModel
    {
        [Required(ErrorMessage = "L'ID est requis.")]
        public int Id { get; set; }

        [Required(ErrorMessage = "Le prénom est requis.")]
        [StringLength(50, ErrorMessage = "Le prénom ne peut pas dépasser 50 caractères.")]
        [DisplayName("Nom de famille")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "Le prénom ne peut contenir que des lettres et des espaces.")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Le nom est requis.")]
        [StringLength(100, ErrorMessage = "Le nom ne peut pas dépasser 100 caractères.")]
        [DisplayName("Prénom")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "Le nom ne peut contenir que des lettres et des espaces.")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "Le nom du tuteur est requis.")]
        [StringLength(100, ErrorMessage = "Le nom du tuteur ne peut pas dépasser 100 caractères.")]
        [DisplayName("Tuteur")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "Le nom du tuteur ne peut contenir que des lettres et des espaces.")]
        public string TutorName { get; set; }

        [Required(ErrorMessage = "Le CIN est requis.")]
        [StringLength(10, ErrorMessage = "Le CIN ne peut pas dépasser 10 caractères.")]
        [Unique("CIN")]
        [DisplayName("N° CIN")]
        [RegularExpression(@"^[a-zA-Z0-9]+$", ErrorMessage = "Le CIN ne peut contenir que des lettres et des chiffres.")]
        public string CIN { get; set; }

        [Required(ErrorMessage = "Le téléphone est requis.")]
        [Phone(ErrorMessage = "Le numéro de téléphone n'est pas valide.")]
        [DisplayName("Téléphone")]
        [RegularExpression(@"^\+?[0-9]{10,15}$", ErrorMessage = "Le numéro de téléphone doit être valide.")]
        public string Phone { get; set; }

        [Required(ErrorMessage = "L'adresse est requise.")]
        [StringLength(100, ErrorMessage = "L'adresse ne peut pas dépasser 100 caractères.")]
        [DisplayName("Adresse")]
        public string Adress { get; set; }

        [Required(ErrorMessage = "La province est requise.")]
        [StringLength(100, ErrorMessage = "La province ne peut pas dépasser 100 caractères.")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "La province ne peut contenir que des lettres et des espaces.")]
        public string Province { get; set; }

        [Required(ErrorMessage = "La ville est requise.")]
        [StringLength(100, ErrorMessage = "La ville ne peut pas dépasser 100 caractères.")]
        [DisplayName("Ville")]
        [RegularExpression(@"^[a-zA-Z\s]+$", ErrorMessage = "La ville ne peut contenir que des lettres et des espaces.")]
        public string City { get; set; }

        [Required(ErrorMessage = "L'email est requis.")]
        [EmailAddress(ErrorMessage = "L'adresse email n'est pas valide.")]
        [Unique("Email")]
        [StringLength(100, ErrorMessage = "L'email ne peut pas dépasser 100 caractères.")]
        [DisplayName("E-mail")]
        public string Email { get; set; }


        [DisplayName("Date de création")]
        [DataType(DataType.Date)]
        public DateTime DateAdded { get; set; }

        public EnfantModel()
        {
            Id = -1;
            FirstName = string.Empty;
            LastName = string.Empty;
            TutorName = string.Empty;
            CIN = string.Empty;
            Phone = string.Empty;
            Adress = string.Empty;
            Province = string.Empty;
            City = string.Empty;
            Email = string.Empty;
            DateAdded = DateTime.Now;
        }

        public EnfantModel(int id, string firstName, string lastName, string tutorName, string cIN, string phone, string adress, string province, string city, string email)
        {
            Id = id;
            FirstName = firstName;
            LastName = lastName;
            TutorName = tutorName;
            CIN = cIN;
            Phone = phone;
            Adress = adress;
            Province = province;
            City = city;
            Email = email;
            DateAdded = DateTime.Now;
        }
    }
}
