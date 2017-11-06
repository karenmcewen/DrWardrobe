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
    public class NeckWearsController : Controller
    {
        private DoctorsWardrobeEntities db = new DoctorsWardrobeEntities();

        // GET: NeckWears
        public ActionResult Index()
        {
            var neckWears = db.NeckWears.Include(n => n.Color).Include(n => n.Occasion).Include(n => n.Season);
            return View(neckWears.ToList());
        }

        // GET: NeckWears/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckWear neckWear = db.NeckWears.Find(id);
            if (neckWear == null)
            {
                return HttpNotFound();
            }
            return View(neckWear);
        }

        // GET: NeckWears/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName");
            return View();
        }

        // POST: NeckWears/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NeckWearID,NeckWearName,NeckWearPhotoURL,NeckWearType,ColorID,OccasionID,SeasonID")] NeckWear neckWear)
        {
            if (ModelState.IsValid)
            {
                db.NeckWears.Add(neckWear);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", neckWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", neckWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", neckWear.SeasonID);
            return View(neckWear);
        }

        // GET: NeckWears/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckWear neckWear = db.NeckWears.Find(id);
            if (neckWear == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", neckWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", neckWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", neckWear.SeasonID);
            return View(neckWear);
        }

        // POST: NeckWears/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NeckWearID,NeckWearName,NeckWearPhotoURL,NeckWearType,ColorID,OccasionID,SeasonID")] NeckWear neckWear)
        {
            if (ModelState.IsValid)
            {
                db.Entry(neckWear).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "ColorFamily", neckWear.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "OccasionType", neckWear.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "SeasonName", neckWear.SeasonID);
            return View(neckWear);
        }

        // GET: NeckWears/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckWear neckWear = db.NeckWears.Find(id);
            if (neckWear == null)
            {
                return HttpNotFound();
            }
            return View(neckWear);
        }

        // POST: NeckWears/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NeckWear neckWear = db.NeckWears.Find(id);
            db.NeckWears.Remove(neckWear);
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
