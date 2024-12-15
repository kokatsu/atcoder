import std;

void main() {
    int N, M, Q;
    readf("%d %d %d\n", N, M, Q);

    auto C = new int[](M);
    C[] = N;
    auto S = new bool[][](N, M);
    foreach (_; 0 .. Q) {
        auto P = readln.chomp.split.to!(int[]);

        if (P[0] == 1) {
            int score;
            foreach (i; 0 .. M) {
                if (S[P[1] - 1][i]) {
                    score += C[i];
                }
            }
            score.writeln;
        }
        else {
            --C[P[2] - 1];
            S[P[1] - 1][P[2] - 1] = true;
        }
    }
}
