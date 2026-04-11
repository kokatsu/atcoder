import std;

void main() {
    int N;
    readfln("%d", N);

    long[] L = readln.chomp.split.to!(long[]);

    L[] *= 2;

    int res;

    void dfs(int index = 0, long position = 1, int count = 0) {
        if (index >= N) {
            res = max(res, count);
            return;
        }

        int newCount = count;
        if (position > 0 && position - L[index] < 0) {
            ++newCount;
        }
        dfs(index + 1, position - L[index], newCount);

        newCount = count;
        if (position < 0 && position + L[index] > 0) {
            ++newCount;
        }
        dfs(index + 1, position + L[index], newCount);
    }

    dfs();

    res.writeln;
}
