using EnfantMod.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace EnfantMod.Data
{
    internal class EnfantDAO
    {
        private string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=EnfantsDataDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;";


        // Fetch all records
        public List<EnfantModel> FetchAll()
        {
            List<EnfantModel> returnList = new List<EnfantModel>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "SELECT Id, FirstName, LastName, TutorName, CIN, Phone, Adress, Province, City, Email, DateAdded FROM dbo.Enfants";

                SqlCommand command = new SqlCommand(sqlQuery, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        EnfantModel enfant = new EnfantModel
                        {
                            Id = reader.GetInt32(0),
                            FirstName = reader.GetString(1),
                            LastName = reader.GetString(2),
                            TutorName = reader.GetString(3),
                            CIN = reader.GetString(4),
                            Phone = reader.GetString(5),
                            Adress = reader.GetString(6),
                            Province = reader.GetString(7),
                            City = reader.GetString(8),
                            Email = reader.GetString(9),
                            DateAdded = reader.GetDateTime(10)
                        };

                        returnList.Add(enfant);
                    }
                }
            }

            return returnList;
        }

        // Fetch one record by ID
        public EnfantModel FetchOne(int Id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "SELECT * from dbo.Enfants WHERE Id = @Id";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                command.Parameters.Add("@Id", System.Data.SqlDbType.Int).Value = Id;

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                EnfantModel enfant = new EnfantModel();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        enfant.Id = reader.GetInt32(0);
                        enfant.FirstName = reader.GetString(1);
                        enfant.LastName = reader.GetString(2);
                        enfant.TutorName = reader.GetString(3);
                        enfant.CIN = reader.GetString(4);
                        enfant.Phone = reader.GetString(5);
                        enfant.Adress = reader.GetString(6);
                        enfant.Province = reader.GetString(7);
                        enfant.City = reader.GetString(8);
                        enfant.Email = reader.GetString(9);
                        enfant.DateAdded = reader.GetDateTime(10);
                    }
                }

                return enfant;
            }
        }

        // Create new record
        public int Create(EnfantModel enfantModel)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string sqlQuery = "INSERT INTO dbo.Enfants (FirstName, LastName, TutorName, CIN, Phone, Adress, Province, City, Email, DateAdded) OUTPUT Inserted.Id VALUES (@FirstName, @LastName, @TutorName, @CIN, @Phone, @Adress, @Province, @City, @Email, @DateAdded)";
                SqlCommand command = new SqlCommand(sqlQuery, connection);

                command.Parameters.AddWithValue("@FirstName", enfantModel.FirstName);
                command.Parameters.AddWithValue("@LastName", enfantModel.LastName);
                command.Parameters.AddWithValue("@TutorName", enfantModel.TutorName);
                command.Parameters.AddWithValue("@CIN", enfantModel.CIN);
                command.Parameters.AddWithValue("@Phone", enfantModel.Phone);
                command.Parameters.AddWithValue("@Adress", enfantModel.Adress);
                command.Parameters.AddWithValue("@Province", enfantModel.Province);
                command.Parameters.AddWithValue("@City", enfantModel.City);
                command.Parameters.AddWithValue("@Email", enfantModel.Email);
                command.Parameters.AddWithValue("@DateAdded", enfantModel.DateAdded);

                return (int)command.ExecuteScalar();
            }
        }

        // Update existing record
        public int Update(EnfantModel enfantModel)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "UPDATE dbo.Enfants SET FirstName = @FirstName, LastName = @LastName, TutorName = @TutorName, CIN = @CIN, Phone = @Phone, Adress = @Adress, Province = @Province, City = @City, Email = @Email WHERE Id = @Id";
                SqlCommand command = new SqlCommand(sqlQuery, connection);

                command.Parameters.AddWithValue("@Id", enfantModel.Id);
                command.Parameters.AddWithValue("@FirstName", enfantModel.FirstName);
                command.Parameters.AddWithValue("@LastName", enfantModel.LastName);
                command.Parameters.AddWithValue("@TutorName", enfantModel.TutorName);
                command.Parameters.AddWithValue("@CIN", enfantModel.CIN);
                command.Parameters.AddWithValue("@Phone", enfantModel.Phone);
                command.Parameters.AddWithValue("@Adress", enfantModel.Adress);
                command.Parameters.AddWithValue("@Province", enfantModel.Province);
                command.Parameters.AddWithValue("@City", enfantModel.City);
                command.Parameters.AddWithValue("@Email", enfantModel.Email);

                connection.Open();
                return command.ExecuteNonQuery();
            }
        }

        // Delete record
        public int Delete(int id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = "DELETE from dbo.Enfants WHERE Id = @Id";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                command.Parameters.AddWithValue("@Id", id);

                connection.Open();
                return command.ExecuteNonQuery();
            }
        }

        // Search records
        public List<EnfantModel> Search(string firstName, string lastName)
        {
            List<EnfantModel> returnList = new List<EnfantModel>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("", connection);
                string sqlQuery = "SELECT * FROM dbo.Enfants WHERE 1=1";

                if (!string.IsNullOrEmpty(firstName))
                {
                    sqlQuery += " AND FirstName LIKE @FirstName";
                    command.Parameters.Add("@FirstName", System.Data.SqlDbType.VarChar).Value = "%" + firstName + "%";
                }

                if (!string.IsNullOrEmpty(lastName))
                {
                    sqlQuery += " AND LastName LIKE @LastName";
                    command.Parameters.Add("@LastName", System.Data.SqlDbType.VarChar).Value = "%" + lastName + "%";
                }

                command.CommandText = sqlQuery;
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        EnfantModel enfant = new EnfantModel
                        {
                            Id = reader.GetInt32(0),
                            FirstName = reader.GetString(1),
                            LastName = reader.GetString(2),
                            TutorName = reader.GetString(3),
                            CIN = reader.GetString(4),
                            Phone = reader.GetString(5),
                            Adress = reader.GetString(6),
                            Province = reader.GetString(7),
                            City = reader.GetString(8),
                            Email = reader.GetString(9),
                            DateAdded = reader.GetDateTime(10)
                        };

                        returnList.Add(enfant);
                    }
                }
            }

            return returnList;
        }
        public bool CheckUnique(string propertyName, string value, int id)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string sqlQuery = $"SELECT COUNT(*) FROM dbo.Enfants WHERE {propertyName} = @Value AND Id != @Id";
                SqlCommand command = new SqlCommand(sqlQuery, connection);
                command.Parameters.AddWithValue("@Value", value);
                command.Parameters.AddWithValue("@Id", id);

                connection.Open();
                int count = (int)command.ExecuteScalar();

                return count == 0;
            }
        }
    }
}
