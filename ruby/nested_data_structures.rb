us-government = {
	legestrative: {
		house: {
			house_speaker: "Paul Ryan"
			representatives: 453
			duties: {
				"Introduce Bills", "Approve Bills"
			}
		}
		sentate: {
			senate_president: "Mike Pence"
			sentators: 100
			duties: {
				"Introduce Bills", "Approve Bills", "Approve Presidental Appointment"
			}
		}
	}
	judiciary:{
		chief_justice: "John Roberts"
		justices: 9
		term_limit: "Life Tenure"
		duties: {
			"Interpret the Constitution", "Adjudicates cases and controversies"
		}
	}
	executive:{
		president: "Donald J. Trump"
		vice_president: "Mike Pence"
	}
}

p executive[:president]
p judiciary[:duties][1]
p legestrative[:house_speaker]