var stdin = process.stdin;

stdin.setRawMode(true);

// stdin.resume();

// stdin.setEncoding('utf8');

stdin.on('data', function(key) {
	if (key == '\u0003') {
		process.exit();
	}
	process.stdout.write("Received: ")
	process.stdout.write(key);
	process.stdout.write("\n");
});
