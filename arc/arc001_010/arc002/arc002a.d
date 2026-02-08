import std;

void main() {
    int Y;
    readfln("%d", Y);

    bool isLeap = (Y % 4 == 0 && Y % 100 != 0) || (Y % 400 == 0);

    string res = isLeap ? "YES" : "NO";
    res.writeln;
}
