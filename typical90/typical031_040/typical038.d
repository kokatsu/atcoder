import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    auto G = gcd(A, B);
    A /= G;

    long L = 10L ^^ 18;

    if (L / A < B) writeln("Large");
    else writeln(A*B);
}