import std;

void main() {
    int y, m, d;
    readf("%d/%d/%d\n", y, m, d);

    string res = format("2018/%02d/%02d", m, d);
    res.writeln;
}