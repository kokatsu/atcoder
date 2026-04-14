import std;

void main() {
    real D;
    readfln("%f", D);

    real S = (D / 2.0) ^^ 2 * PI;

    string res = format("%.20f", S);
    res.writeln;
}
