import std;

void main() {
    int N, K;
    readfln("%d %d", N, K);

    int[] M = new int[](N);
    string[][] W = new string[][](N);
    bool[string][] D = new bool[string][](N);
    foreach (i; 0 .. N) {
        readfln("%d", M[i]);
        W[i] = readln.chomp.split;
        foreach (word; W[i]) {
            D[i][word] = true;
        }
    }

    int res;
    foreach (i; 0 .. N) {
        foreach (j; i + 1 .. N) {
            int C;
            foreach (word; W[i]) {
                if (D[j].get(word, false)) {
                    ++C;
                }
            }

            if (C >= K) {
                ++res;
            }
        }
    }

    res.writeln;
}
