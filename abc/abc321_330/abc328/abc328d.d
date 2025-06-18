import std;

void main() {
    string S;
    readf("%s\n", S);

    char[] res;
    foreach (s; S) {
        if (s == 'C' && res.endsWith("AB")) {
            res.length -= 2;
        }
        else {
            res ~= s;
        }
    }

    res.writeln;
}
