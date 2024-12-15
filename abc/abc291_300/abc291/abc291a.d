import std;

void main() {
    string S;
    readf("%s\n", S);

    foreach (i, s; S) {
        if (std.uni.isUpper(s)) {
            writeln(i + 1);
        }
    }
}
