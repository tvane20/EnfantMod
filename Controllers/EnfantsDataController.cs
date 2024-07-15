using EnfantMod.Data;
using EnfantMod.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;

namespace EnfantMod.Controllers
{
    public class EnfantsDataController : Controller
    {
        // GET: EnfantsData
        public ActionResult Index()
        {
            EnfantDAO enfantDAO = new EnfantDAO();
            List<EnfantModel> enfantsData = enfantDAO.FetchAll();

            return View("Index", enfantsData);
        }


        public ActionResult Details(int id)
        {
            EnfantDAO enfantDAO = new EnfantDAO();
            EnfantModel enfant = enfantDAO.FetchOne(id);

            return View("Details", enfant);
        }

        public ActionResult Create()
        {
            return PartialView("_Create", new EnfantModel());
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(EnfantModel enfant)
        {
            if (!ModelState.IsValid)
            {
                return PartialView("_Create", enfant);
            }
            EnfantDAO enfantDAO = new EnfantDAO();

            int id_enfant = enfantDAO.Create(enfant);

            TempData["SuccessMessage"] = "Enfant ajoutée avec succès!";

            return Json(new { success = true, redirectUrl = Url.Action("Details", new { id = id_enfant }) });
        }

        public ActionResult Edit(int id)
        {
            EnfantDAO enfantDAO = new EnfantDAO();
            EnfantModel enfant = enfantDAO.FetchOne(id);

            return PartialView("_Edit", enfant);
        }


        // POST: Enfant/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(EnfantModel enfant)
        {
            if (!ModelState.IsValid)
            {
                return PartialView("_Edit", enfant);
            }
            EnfantDAO enfantDAO = new EnfantDAO();
            enfantDAO.Update(enfant);

            TempData["SuccessMessage"] = "Enfant modifié avec succès!";

            return Json(new { success = true, redirectUrl = Url.Action("Details", new { id = enfant.Id }) });

        }

        public ActionResult Delete(int id)
        {
            // Afficher la vue de suppression de l'enfant
            return PartialView("_Delete", id);
        }

        public ActionResult DeleteConfirmed(int id)
        {
            EnfantDAO enfantDAO = new EnfantDAO();
            enfantDAO.Delete(id);

            List<EnfantModel> enfants = enfantDAO.FetchAll();

            TempData["SuccessMessage"] = "Enfant supprimé avec succès!";

            return RedirectToAction("Index");
        }





    }
}
