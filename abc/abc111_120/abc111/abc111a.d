import std;

void main() {
    string n;
    readf("%s\n", n);

    string res;
    foreach (x; n) res ~= (x == '1' ? '9' : '1');

    res.writeln;
}