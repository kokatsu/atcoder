import std;

void main() {
    string a, b;
    readf("%s %s\n", a, b);

    string c = a ~ b;

    long n = c.to!long;
    long s = n.to!real.sqrt.floor.to!long;

    string res = s * s == n ? "Yes" : "No";
    res.writeln;
}
