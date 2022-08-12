import std;

void main() {
    long N, H;
    readf("%d %d\n", N, H);

    long A, B, C, D, E;
    auto input = readln.chomp.split.to!(long[]);
    A = input[0], B = input[1], C = input[2], D = input[3], E = input[4];

    long res = long.max;
    foreach (G; 0 .. N+1) {
        long F = ((N - G) * E - H - D * G + B + E) / (B + E);
        if (F < 0) F = 0;

        if (F + G > N) continue;

        res = min(res, A*F+C*G);
    }

    res.writeln;
}