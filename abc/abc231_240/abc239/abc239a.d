import std;

void main() {
    long H;
    readf("%d\n", H);

    real c = 12800000;

    real num = H.to!real;

    real res = sqrt(H * (c + H));

    format("%.10f", res).writeln;
}
