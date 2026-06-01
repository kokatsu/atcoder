import std;

void main() {
    int T;
    readfln("%d", T);

    string[] S = new string[](T);
    foreach (ref s; S) {
        long X1, Y1, R1, X2, Y2, R2;
        readfln("%d %d %d %d %d %d", X1, Y1, R1, X2, Y2, R2);

        long L = (R1 - R2) ^^ 2, H = (R1 + R2) ^^ 2;
        long D = (X1 - X2) ^^ 2 + (Y1 - Y2) ^^ 2;

        s = (L <= D && D <= H) ? "Yes" : "No";
    }

    string res = format("%-(%s\n%)", S);
    res.writeln;
}
