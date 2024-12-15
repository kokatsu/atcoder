import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto next = iota(0, N + 1).array;
    auto prev = next.dup;

    auto list = new int[](N + 1);

    foreach (i; 0 .. Q) {
        auto input = readln.chomp.split.to!(int[]);

        if (input[0] == 1) {
            next[input[1]] = input[2];
            prev[input[2]] = input[1];
        }
        else if (input[0] == 2) {
            next[input[1]] = input[1];
            prev[input[2]] = input[2];
        }
        else {
            int now = input[1];
            list[0] = now;
            int cntP = 1;
            while (prev[now] != now) {
                list[cntP] = prev[now];
                now = list[cntP];
                ++cntP;
            }

            int cntN = cntP;
            now = input[1];
            while (next[now] != now) {
                list[cntN] = next[now];
                now = list[cntN];
                ++cntN;
            }

            write(cntN, " ");
            foreach_reverse (j; 0 .. cntP) {
                write(list[j], " ");
            }
            foreach (j; cntP .. cntN) {
                write(list[j], " ");
            }
        }
    }
}
