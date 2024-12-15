import std;

void main() {
    auto S = readln.chomp;

    auto T = "^(dream|dreamer|erase|eraser)+$";

    auto cnt = S.matchFirst(T).whichPattern;
    writeln(cnt > 0 ? "YES" : "NO");
}
