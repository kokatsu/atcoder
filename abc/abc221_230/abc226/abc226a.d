import std;

void main() {
    real X;
    readf("%f\n", X);

    int res = X.round.to!int;

    res.writeln;
}
