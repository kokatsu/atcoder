import std;

void main() {
    string s;
    readf("%s\n", s);

    auto t = s.replace("BC", "D");

    long res, cntA;
    foreach (x; t) {
        if (x == 'A') ++cntA;
        else if (x == 'D') res += cntA;
        else cntA = 0;
    }

    res.writeln;
}