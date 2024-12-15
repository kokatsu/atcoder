import std;

void main() {
    int A, B, C, X;
    readf("%d %d %d %d\n", A, B, C, X);

    real res = 1.0;
    if (A < X && X <= B) {
        res *= C;
        res /= B - A;
    }
    else if (X > B)
        res = 0;

    format("%.10f", res).writeln;
}
