import std;

void main() {
    char s, t, u, v;
    readfln("%c%c", s, t);
    readfln("%c%c", u, v);

    char[] X = [s, v];
    if (X[0] > X[1]) {
        X.swapAt(0, 1);
    }

    string res = (X == "AD" || X == "BC") ? "No" : "Yes";
    res.writeln;
}
