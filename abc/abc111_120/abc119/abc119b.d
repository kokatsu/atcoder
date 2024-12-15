import std;

void main() {
    int N;
    readf("%d\n", N);

    real res = 0.0, rate = 380000.0;
    foreach (_; 0 .. N) {
        real x;
        string u;
        readf("%f %s\n", x, u);

        if (u == "JPY")
            res += x;
        else
            res += x * rate;
    }

    writefln("%.10f", res);
}
