import std;

void main() {
    int D;
    readf("%d\n", D);

    real res = D.to!real / 100;

    format("%.10f", res).writeln;
}