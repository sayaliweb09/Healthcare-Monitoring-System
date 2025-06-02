using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace SHCAMS_Web
{
    public partial class HospitalMap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlList.Text == "Coal City Hospital")
            {

                ifrm.Attributes["src"] = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15000.63386737058!2d79.29313402850438!3d19.959836885391045!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x187586aace337472!2sPoddar%20International%20Consultancy!5e0!3m2!1sen!2sin!4v1613846012939!5m2!1sen!2sin";

            }

            if (ddlList.Text == "Wockhardt Hospitals")
            {

                ifrm.Attributes["src"] = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.5065825370425!2d79.05189631445634!3d21.132228989614955!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c0647e85b811%3A0x4d5a45497f34ddf1!2sWockhardt+Heart+Hospital!5e0!3m2!1sen!2sin!4v1553695433832";

            }

            if (ddlList.Text == "Alexis Multispecialty Hospital")
            {

                ifrm.Attributes["src"] = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.161000311484!2d79.07734621445721!3d21.18576228777687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c113d847dcbf%3A0x7fd062d82b6be17c!2sAlexis+Multispeciality+Hospital!5e0!3m2!1sen!2sin!4v1553695592891";

            }

            if (ddlList.Text == "Rahate Surgical Hospital")
            {

                ifrm.Attributes["src"] = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.0807151530184!2d79.1141735144566!3d21.149185889033163!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c7366fdba58f%3A0xce76895fb86d2130!2sRahate+Surgical+Hospital!5e0!3m2!1sen!2sin!4v1553753629928";

            }
            if (ddlList.Text == "Kingsway Hospitals")
            {

                ifrm.Attributes["src"] = "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3720.9167473842845!2d79.07966911445666!3d21.15571118880921!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bd4c0e8452ccc85%3A0xe7550038dfa0aa80!2sKingsway+Hospitals!5e0!3m2!1sen!2sin!4v1553695555816";

            }

        }
    }
}