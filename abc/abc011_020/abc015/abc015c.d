import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto T = new int[][](N);
    foreach (i; 0 .. N)
        T[i] = readln.chomp.split.to!(int[]);

    bool prob;

    void f(int times, int xor) {
        if (times >= N) {
            prob |= (xor == 0);
        }
        else {
            foreach (t; T[times]) {
                f(times + 1, xor ^ t);
            }
        }
    }

    f(0, 0);

    writeln(prob ? "Found" : "Nothing");
}
