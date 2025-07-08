import std;

void main() {
    int K, G, M;
    readf("%d %d %d\n", K, G, M);

    int g, m;
    foreach (_; 0 .. K) {
        if (g == G) {
            g = 0;
        }
        else if (m == 0) {
            m = M;
        }
        else {
            int t = min(m, G - g);
            m -= t, g += t;
        }
    }

    string res = format("%d %d", g, m);
    res.writeln;
}
