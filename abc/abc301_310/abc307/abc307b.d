import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (i == j) {
                continue;
            }

            string T = S[i] ~ S[j];
            auto L = T.length;
            bool isOk = true;
            foreach (k; 0 .. L / 2) {
                if (T[k] != T[L - k - 1]) {
                    isOk = false;
                    break;
                }
            }

            if (isOk) {
                writeln("Yes");
                return;
            }
        }
    }

    writeln("No");
}
