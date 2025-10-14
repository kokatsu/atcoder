import std;

void main() {
    int xa, ya, xb, yb, xc, yc;
    readf("%d %d\n%d %d\n%d %d\n", xa, ya, xb, yb, xc, yc);

    int ab = (xa - xb) ^^ 2 + (ya - yb) ^^ 2;
    int bc = (xb - xc) ^^ 2 + (yb - yc) ^^ 2;
    int ca = (xc - xa) ^^ 2 + (yc - ya) ^^ 2;

    string res = "No";
    if (ab == bc + ca || bc == ca + ab || ca == ab + bc) {
        res = "Yes";
    }

    res.writeln;
}
