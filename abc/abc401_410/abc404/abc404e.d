import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = readln.chomp.split.to!(int[]);
    auto A = readln.chomp.split.to!(int[]);

    long res;
    foreach_reverse (i; 1 .. N) {
        if (A[i - 1] == 0) {
            continue;
        }

        ++res;

        if (i == C[i - 1]) {
            continue;
        }

        bool flag;
        int target, pos = int.max;
        foreach_reverse (j; 1 .. C[i - 1] + 1) {
            int k = i - j - 1;
            if (A[k] > 0) {
                A[k] += A[i - 1];
                A[i - 1] = 0;
                flag = true;
                break;
            }

            if (pos > k - C[k]) {
                pos = k - C[k];
                target = k;
            }
        }

        if (!flag) {
            A[target] += A[i - 1];
            A[i - 1] = 0;
        }
    }

    res.writeln;
}
