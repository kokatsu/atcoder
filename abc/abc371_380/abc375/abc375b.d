import std;

void main() {
    int N;
    readf("%d\n", N);

    real D = 0.0, U = 0.0, V = 0.0;
    foreach (i; 0 .. N) {
        real X, Y;
        readf("%f %f\n", X, Y);

        D += hypot(X - U, Y - V);
        U = X, V = Y;
    }

    D += hypot(U, V);

    string res = format("%.20f", D);
    res.writeln;
}
