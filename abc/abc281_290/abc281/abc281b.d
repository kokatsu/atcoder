import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    bool isOK = true;

    if (std.uni.isUpper(S.front)) S.popFront;
    else isOK = false;

    if (std.uni.isUpper(S.back)) S.popBack;
    else isOK = false;

    if (S.length == 6) {
        isOK &= (S.front > '0');

        foreach (s; S) {
            isOK &= std.uni.isNumber(s);
        }
    }
    else {
        isOK = false;
    }

    writeln(isOK ? "Yes" : "No");
}