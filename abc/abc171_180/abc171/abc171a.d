import std;

void main() {
    dchar alpha;
    readf("%c\n", alpha);

    writeln(std.uni.isUpper(alpha) ? 'A' : 'a');
}