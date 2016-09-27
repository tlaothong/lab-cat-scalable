using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebSite2Test.Controllers
{
    public class TextController : Controller
    {
        // GET: Text
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Lipsum5()
        {
            return View();
        }
        public ActionResult Lipsum9()
        {
            return View();
        }
    }
}