using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
	private readonly string _FileName = @"~/issuer.json";

	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		buttonSave.ServerClick += buttonSave_ServerClick;
	}

	void buttonSave_ServerClick(object sender, EventArgs e) { _saveDataToFile(); }

	protected override void OnLoad(EventArgs e)
	{
		base.OnLoad(e);
		if (!IsPostBack)
		{
			this.DataBind();
		}
	}

	public override void DataBind()
	{
		base.DataBind();
		_readDataFromFile();
	}

	private void _readDataFromFile()
	{
		// read JSON directly from a streamReader
		string filePath = Server.MapPath(this._FileName);
		using (StreamReader streamReader = File.OpenText(@filePath))
		{
			using (JsonTextReader jsonTextReader = new JsonTextReader(streamReader))
			{
				JObject jObject = (JObject)JToken.ReadFrom(jsonTextReader);
				textName.Value = jObject["name"].ToString();
				textUrl.Value = jObject["url"].ToString();
				textDescription.Value = jObject["description"].ToString();
				textImage.Value = jObject["image"].ToString();
				textEmail.Value = jObject["email"].ToString();
				textRevocationList.Value = jObject["revocationList"].ToString();
			}
		}
	}

	private void _saveDataToFile()
	{
		string filePath = Server.MapPath(this._FileName);
		using (FileStream fileStream = File.Open(filePath, FileMode.OpenOrCreate))
		{
			using (StreamWriter streamWriter = new StreamWriter(fileStream))
			{
				using (JsonWriter jsonWriter = new JsonTextWriter(streamWriter))
				{
					jsonWriter.Formatting = Formatting.Indented;
					JsonSerializer jsonSerializer = new JsonSerializer();
					IssuerBO issuerBO = new IssuerBO();
					issuerBO.description = textDescription.Value;
					issuerBO.email = textEmail.Value;
					issuerBO.image = textImage.Value;
					issuerBO.name = textName.Value;
					issuerBO.revocationList = textRevocationList.Value;
					issuerBO.url = textUrl.Value;

					jsonSerializer.Serialize(jsonWriter, issuerBO);
				}
			}
		}
	}
}