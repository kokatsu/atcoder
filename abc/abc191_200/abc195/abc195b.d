import std;

void main() {
    int A, B, W;
    readf("%d %d %d\n", A, B, W);

    W *= 10 ^^ 3;

    int mn = int.max, mx = int.min;
    foreach (i; 1 .. W + 1) {
        int l = A * i, u = B * i;
        if (l <= W && W <= u) {
            mn = min(mn, i), mx = max(mx, i);
        }
    }

    if (mn > mx)
        writeln("UNSATISFIABLE");
    else
        writeln(mn, " ", mx);
}
