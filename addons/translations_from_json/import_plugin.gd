@tool extends EditorImportPlugin

func _get_importer_name():
	return "json_translations_importer"

func _get_visible_name():
	return "JSON Translation"

func _get_recognized_extensions():
	return ["json"]
	
func _get_save_extension():
	return "translation"
	
func _get_resource_type():
	return "Translation"

func _get_preset_count():
	return 1

func _get_preset_name(preset):
	return "Default"
			
func _get_import_options(path, preset_index):
	return []
			
func _get_import_order():
	return 0
			
func _get_priority():
	return 1

func _import(source_file: String, save_path: String, options: Dictionary, platform_variants: Array[String], gen_files: Array[String]):
	var translation := Translation.new();
	translation.locale = source_file.get_file().replace(".json", "");

	var json := getJSON(source_file);
	for key in json.keys():
		translation.add_message(key, json[key]);
	
	return ResourceSaver.save(translation, "%s.%s" % [save_path, _get_save_extension()]);

func getJSON(path: String) -> Dictionary:
	var jsonHelper = JSON.new();
	jsonHelper.parse(FileAccess.get_file_as_string(path))
	return jsonHelper.get_data();