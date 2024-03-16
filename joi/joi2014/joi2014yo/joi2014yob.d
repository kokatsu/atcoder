import std;

struct Vote {
    int num, cost;
}

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    Vote[] votes;
    foreach (i; 0 .. N) {
        int A;
        readf("%d\n", A);

        if (!votes.empty && votes[$-1].cost <= A) {
            continue;
        }

        votes ~= Vote(i+1, A);
    }

    auto counts = new int[](M+1);
    foreach (_; 0 .. M) {
        int B;
        readf("%d\n", B);

        int num = votes.filter!(a => a.cost <= B).front.num;
        ++counts[num];
    }

    auto res = counts.maxIndex;
    res.writeln;
}