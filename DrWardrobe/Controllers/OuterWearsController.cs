using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DrWardrobe.Models;

namespace DrWardrobe.Controllers
{
    public class OuterWearsController : Controller
    {
        private DoctorsWardrobeEntities db = new DoctorsWardrobeEntities();

        // GET: OuterWears
        public ActionResult Index()
        {
            var outerWears = db.OuterWears.Include(o => o.Color).Include(o => o.Occasion).Include(o => o.Season);
            return View(outerWears.ToList());
        }

        // GET: OuterWears/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OuterWear outerWear = db.OuterWears.Find(id);
            if (outerWear == null)
            {
                return HttpNotFound();
            }
            return View(outerWear);
        }

        // GET: OuterWears/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            return View();
        }

        // POST: OuterWears/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OuterWearID,OuterWearName,OuterWearPhotoURL,OuterWearType,ColorID,OccasionID,SeasonID")] OuterWear outerWear)
        {
            if (ModelState.IsValid)
            {
                db.OuterWears.Add(outerWear);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", outerWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", outerWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", outerWear.SeasonID);
            return View(outerWear);
        }

        // GET: OuterWears/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OuterWear outerWear = db.OuterWears.Find(id);
            if (outerWear == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", outerWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", outerWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", outerWear.SeasonID);
            return View(outerWear);
        }

        // POST: OuterWears/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OuterWearID,OuterWearName,OuterWearPhotoURL,OuterWearType,ColorID,OccasionID,SeasonID")] OuterWear outerWear)
        {
            if (ModelState.IsValid)
            {
                db.Entry(outerWear).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", outerWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", outerWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", outerWear.SeasonID);
            return View(outerWear);
        }

        // GET: OuterWears/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            OuterWear outerWear = db.OuterWears.Find(id);
            if (outerWear == null)
            {
                return HttpNotFound();
            }
            return View(outerWear);
        }

        // POST: OuterWears/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            OuterWear outerWear = db.OuterWears.Find(id);
            db.OuterWears.Remove(outerWear);
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
