def match(workspace, config):
	workspace = json.decode(workspace)
	if workspace and not workspace["description"]:
		return True

def recommend(workspace, config):
	workspace = json.decode(workspace)
	configuration = json.decode(config)
	workspace["description"] = configuration["message"]

	return json.encode(workspace)
