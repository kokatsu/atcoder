import std;

enum long L = 10;
enum long[] arr = L.iota.array;

void main() {
    long cnt;
    long[dchar] list;

    auto S = new string[](3);
    foreach (i; 0 .. 3) {
        readf("%s\n", S[i]);

        foreach (s; S[i]) {
            if (s !in list) {
                list[s] = cnt++;
            }
        }
    }

    if (cnt <= L) {
        foreach (p; arr.permutations) {
            bool isOK = true;
            auto N = new long[](3);
            foreach (i; 0 .. 3) {
                isOK &= (p[list[S[i].front]] != 0);

                foreach (s; S[i]) {
                    N[i] *= 10;
                    N[i] += p[list[s]];
                }
            }

            if (!isOK) continue;

            if (N[0] + N[1] == N[2] && ((S[2].length == 1) || (N[2] > 0))) {
                foreach (n; N) n.writeln;
                return;
            }
        }
    }

    writeln("UNSOLVABLE");
}