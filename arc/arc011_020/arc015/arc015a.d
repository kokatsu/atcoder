import std;

void main() {
    real n;
    readfln("%f", n);

    string res = format("%.20f", 9.0 / 5.0 * n + 32.0);
    res.writeln;
}
