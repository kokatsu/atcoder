import std;

void main() {
    int N;
    readf("%d\n", N);

    auto H = readln.chomp.split.to!(int[]);

    bool isOK = true;
    int cnt = 1;
    foreach (i; 1 .. N) {
        if (H[i] > H[i - 1]) {
            ++cnt;
        }
        else if (H[i] < H[i - 1]) {
            isOK &= (H[i - 1] - H[i] <= cnt);
            cnt = 0;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
