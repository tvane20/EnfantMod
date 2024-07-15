using System;
using System.Collections.Generic;
using Bogus;
using EnfantMod.Models;

namespace EnfantMod.Data
{
    public class FakeEnfantDataGenerator
    {
        public static List<EnfantModel> GenerateFakeEnfants(int count)
        {
            var faker = new Faker<EnfantModel>()
                .RuleFor(e => e.Id, f => f.IndexVariable++)
                .RuleFor(e => e.FirstName, f => f.Person.FirstName)
                .RuleFor(e => e.LastName, f => f.Person.LastName)
                .RuleFor(e => e.TutorName, f => f.Person.FullName)
                .RuleFor(e => e.CIN, f => f.Random.AlphaNumeric(8))
                .RuleFor(e => e.Phone, f => f.Phone.PhoneNumber())
                .RuleFor(e => e.Adress, f => f.Address.FullAddress())
                .RuleFor(e => e.Province, f => f.Address.State())
                .RuleFor(e => e.City, f => f.Address.City())
                .RuleFor(e => e.Email, (f, e) => $"{e.FirstName.ToLower()}.{e.LastName.ToLower()}@example.com")
                .RuleFor(e => e.DateAdded, f => f.Date.Recent());

            return faker.Generate(count);
        }
    }
}
