import std;

enum string P = "wbwbwwbwbwbw";
enum int R = 100;

void main() {
    int W, B;
    readf("%d %d\n", W, B);

    auto L = P.length;

    int N = W + B;

    auto S = P.replicate(R);
    foreach (i; 0 .. L) {
        int w = S[i..N+i].count('w').to!int, b = N - w;

        if (w == W && b == B) {
            writeln("Yes");
            return;
        }
    }

    writeln("No");
}