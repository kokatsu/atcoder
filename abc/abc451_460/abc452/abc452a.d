import std;

void main() {
    int M, D;
    readfln("%d %d", M, D);

    string res = "No";
    if ((M == 1 && D == 7) || (M == D && M > 1 && M < 10 && M % 2 == 1)) {
        res = "Yes";
    }

    res.writeln;
}
