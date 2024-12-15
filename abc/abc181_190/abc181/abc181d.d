import std;

void main() {
    string S = readln.chomp;

    int[] digits = new int[](10);
    foreach (s; S) {
        ++digits[s - '0'];
    }

    bool isYes;
    void dfs(int[] used, int num, int cnt) {
        if (cnt == min(3, S.length)) {
            if (num % 8 == 0) {
                isYes = true;
            }
        }
        else {
            foreach (i; 1 .. 10) {
                if (used[i] >= digits[i]) {
                    continue;
                }
                auto next = used.dup;
                ++next[i];
                dfs(next, num + i * (10 ^^ cnt), cnt + 1);
            }
        }
    }

    dfs(0.repeat.take(10).array, 0, 0);

    if (isYes) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}
