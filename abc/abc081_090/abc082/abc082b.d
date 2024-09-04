import std;

void main() {
    auto s = readln.chomp.to!(dchar[]);
    auto t = readln.chomp.to!(dchar[]);

    s.sort;
    t.sort!"a > b";

    bool isOk;
    foreach (x, y; zip(s, t)) {
        if (x == y) {
            continue;
        }

        string res = x < y ? "Yes" : "No";
        res.writeln;
        return;
    }

    string res = s.length < t.length ? "Yes" : "No";
    res.writeln;
}