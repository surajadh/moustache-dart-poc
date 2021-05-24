import 'package:mustache_template/mustache.dart';

String generateDocumentation() {
  var source = '''
	  {{# names }}
            <div>{{ lastname }}, {{ firstname }}</div>
	  {{/ names }}
	  {{^ names }}
	    <div>No names.</div>
	  {{/ names }}
	  {{! I am a comment. }}
	''';

  var template = Template(source);

  var output = template.renderString({
    'names': [
      // {'firstname': 'Greg', 'lastname': 'Lowe'},
      // {'firstname': 'Bob', 'lastname': 'Johnson'}
    ]
  });
  print(output);
  return output;
}
