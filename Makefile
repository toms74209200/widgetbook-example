PROJECT_DIR	=	./widgetbook_example

${PROJECT_DIR}/lib/widgetboo.directories.g.dart:
	cd ${PROJECT_DIR} && flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: widgetbook

widgetbook: ${PROJECT_DIR}/lib/widgetboo.directories.g.dart
	cd ${PROJECT_DIR} && flutter run -t lib/widgetbook.dart