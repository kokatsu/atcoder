import std;

void main() {
    int R, N, M, L;
    readf("%d %d %d %d\n", R, N, M, L);

    auto s = readln.chomp.split.to!(int[]);

    bool isOk = true;
    int pins, times, rounds;
    foreach (i, x; s) {
        pins += x;
        ++times;
        if (pins > N) {
            isOk = false;
            break;
        }

        if (pins == N || times == M) {
            pins = 0;
            times = 0;
            ++rounds;
        }
    }

    isOk &= (times == 0 && rounds == R);

    string res = isOk ? "Yes" : "No";
    res.writeln;
}