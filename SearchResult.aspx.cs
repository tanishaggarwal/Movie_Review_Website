﻿using System;
using System.Net;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.IO;

namespace Movie_Review_Website
{
    public partial class SearchResult : System.Web.UI.Page
    {
        String APIKey = "a0a685c";
        protected void Page_Load(object sender, EventArgs e)
        {
            String url = "http://www.omdbapi.com/?apikey=" + APIKey + "&t=" + Request.QueryString["search"].ToString() + "&plot=full";
            WebRequest request = WebRequest.Create(url);
            request.Method = "GET";
            request.ContentType = "application/json; charset=utf-8";
            WebResponse response = request.GetResponse();
            String data;
            using (Stream stream = response.GetResponseStream())
            {
                StreamReader reader = new StreamReader(stream, System.Text.Encoding.UTF8);
                data = reader.ReadToEnd();
            }
            dynamic json = JsonConvert.DeserializeObject(data);
            if (json.Response == true)
            {
                lRating.Text = json.imdbRating;
                imgPoster.ImageUrl = json.Poster;
                String title = json.Title;
                tbTitle.Text = title.ToUpper();
                lRelease.Text = json.Released;
                lRunningTime.Text = json.Runtime;
                lGenre.Text = json.Genre;
                lActors.Text = json.Actors;
                lPlot.Text = json.Plot;
                lLanguage.Text = json.Language;
                lType.Text = json.Type;
                lCountry.Text = json.Country;
                lAwards.Text = json.Awards;
                LDirector.Text = json.Director;
                lVotes.Text = json.imdbVotes;
            }
        }

        protected void Search(object sender, EventArgs e)
        {
            Response.Redirect("SearchResult.aspx?search=" + tbSearch.Text.ToString());
        }
    }
}