using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using GC_Project_Recipes.Models;

namespace GC_Project_Recipes.Controllers
{
    public class Ingred_RecipeController : Controller
    {
        private RecipeDBEntities db = new RecipeDBEntities();

        // GET: Ingred_Recipe
        public ActionResult Index()
        {
            var ingred_Recipe = db.Ingred_Recipe.Include(i => i.Ingredient).Include(i => i.Recipe);
            return View(ingred_Recipe.ToList());
        }

        // GET: Ingred_Recipe/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ingred_Recipe ingred_Recipe = db.Ingred_Recipe.Find(id);
            if (ingred_Recipe == null)
            {
                return HttpNotFound();
            }
            return View(ingred_Recipe);
        }

        // GET: Ingred_Recipe/Create
        public ActionResult Create()
        {
            ViewBag.Ingred_ID = new SelectList(db.Ingredients, "Ingred_ID", "Ingred_Name");
            ViewBag.Recipe_ID = new SelectList(db.Recipes, "Recipe_ID", "Prep_Time");
            return View();
        }

        // POST: Ingred_Recipe/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Recipe_ID,Ingred_ID,Type")] Ingred_Recipe ingred_Recipe)
        {
            if (ModelState.IsValid)
            {
                db.Ingred_Recipe.Add(ingred_Recipe);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Ingred_ID = new SelectList(db.Ingredients, "Ingred_ID", "Ingred_Name", ingred_Recipe.Ingred_ID);
            ViewBag.Recipe_ID = new SelectList(db.Recipes, "Recipe_ID", "Prep_Time", ingred_Recipe.Recipe_ID);
            return View(ingred_Recipe);
        }

        // GET: Ingred_Recipe/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ingred_Recipe ingred_Recipe = db.Ingred_Recipe.Find(id);
            if (ingred_Recipe == null)
            {
                return HttpNotFound();
            }
            ViewBag.Ingred_ID = new SelectList(db.Ingredients, "Ingred_ID", "Ingred_Name", ingred_Recipe.Ingred_ID);
            ViewBag.Recipe_ID = new SelectList(db.Recipes, "Recipe_ID", "Prep_Time", ingred_Recipe.Recipe_ID);
            return View(ingred_Recipe);
        }

        // POST: Ingred_Recipe/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Recipe_ID,Ingred_ID,Type")] Ingred_Recipe ingred_Recipe)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ingred_Recipe).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Ingred_ID = new SelectList(db.Ingredients, "Ingred_ID", "Ingred_Name", ingred_Recipe.Ingred_ID);
            ViewBag.Recipe_ID = new SelectList(db.Recipes, "Recipe_ID", "Prep_Time", ingred_Recipe.Recipe_ID);
            return View(ingred_Recipe);
        }

        // GET: Ingred_Recipe/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Ingred_Recipe ingred_Recipe = db.Ingred_Recipe.Find(id);
            if (ingred_Recipe == null)
            {
                return HttpNotFound();
            }
            return View(ingred_Recipe);
        }

        // POST: Ingred_Recipe/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Ingred_Recipe ingred_Recipe = db.Ingred_Recipe.Find(id);
            db.Ingred_Recipe.Remove(ingred_Recipe);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
