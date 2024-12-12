import std;

void main() {
    int N, A, B;
    readf("%d %d %d\n", N, A, B);

    int res;
    foreach (i; 1 .. N+1) {
        int S, R = i;
        while (R > 0) {
            S += R % 10;
            R /= 10;
        }

        if (A <= S && S <= B) {
            res += i;
        }
    }

    res.writeln;
}