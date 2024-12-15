import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto T = new int[][](N);
    foreach (i; 0 .. N)
        T[i] = readln.chomp.split.to!(int[]);

    auto arr = iota(1, N).array;
    int res;
    foreach (paths; arr.permutations) {
        int time, from;
        foreach (path; paths) {
            time += T[from][path];
            from = path;
        }

        time += T[from][0];

        if (time == K)
            ++res;
    }

    res.writeln;
}
