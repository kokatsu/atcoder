import std;

void main() {
    string res;

    foreach (i; 0 .. 3) {
        string c;
        readf("%s\n", c);

        res ~= c[i];
    }

    res.writeln;
}
