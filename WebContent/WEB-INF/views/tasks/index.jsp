<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <c:if test="${flush!=null}">
            <div id="flush_success">
                <c:out value="${flush}"/>
            </div>
        </c:if>
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="task" items="${tasks}">
                <li>
                    <a href="<c:url value='/show?id=${task.id}'/>">
                        <c:out value="${task.id}"/>
                    </a>
                    :<c:out value="${task.content}"/>
                </li>
            </c:forEach>
        </ul>

        <p><a href="<c:url value='/new'/>">新規タスクの登録</a></p>

        <div id="pagination">
            (全 ${tasks_count} 件)<br/>
            <c:forEach var="i" begin="1" end="${((tasks_count-1)/15)+1}" step="1">
                <c:choose>
                    <c:when test="${i==page}">
                        <c:out value="${i}"/>&nbsp;
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value='/index?page=${i}'/>"><c:out value="${i}"/></a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </c:param>
</c:import>